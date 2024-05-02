import streamlit as st


def main_loop():
    st.title("Data Privacy App")
    text = st.text_area("Enter your text here:")
    st.write("You entered:", text)


if __name__ == "__main__":
	main_loop()
