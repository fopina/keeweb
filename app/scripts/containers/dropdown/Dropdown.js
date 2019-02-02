import { connect } from 'react-redux';
import { Dropdown } from 'components/dropdown/Dropdown';
import { toggleDropdown } from 'store/ui/toggle-dropdown';

const mapStateToProps = state => {
    return {
        dropdown: state.ui.dropdown,
    };
};

const mapDispatchToProps = dispatch => {
    return {
        onRemove() {
            dispatch(toggleDropdown());
        },
    };
};

const DropdownContainer = connect(
    mapStateToProps,
    mapDispatchToProps
)(Dropdown);

export { DropdownContainer as Dropdown };