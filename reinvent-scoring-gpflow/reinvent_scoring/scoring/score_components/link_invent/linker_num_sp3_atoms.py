from reinvent_scoring.scoring.component_parameters import ComponentParameters
from reinvent_scoring.scoring.score_components.link_invent.base_link_invent_component import BaseLinkInventComponent


class LinkerNumSP3Atoms(BaseLinkInventComponent):
    def __init__(self, parameters: ComponentParameters):
        super().__init__(parameters)

    def _calculate_linker_property(self, labeled_mol):
        return self._linker_descriptor.num_sp3_atoms(labeled_mol)
