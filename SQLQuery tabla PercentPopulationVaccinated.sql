Create view PercentPeopleVaccinated as
Select dea.continent, dea.location, dea.population, vac.new_vaccinations, SUM(CAST(new_vaccinations as bigint)) OVER (Partition by dea.location order by dea.location, dea.date) as RollingPeeopleVaccinated 
From PortfolioProyect..CovidDeaths$ dea
Join PortfolioProyect..CovidVaccinations$ vac
    on dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null


select *
from PortfolioProyect..CovidDeaths$

select *
from PortfolioProyect..CovidVaccinations$

select *
from PercentPeopleVaccinated