package main

import "testing"

func Test_intDivision(t *testing.T) {
	type args struct {
		numerator   int
		denominator int
	}
	tests := []struct {
		name    string
		args    args
		want    int
		want1   int
		wantErr bool
	}{
		// TODO: Add test cases.
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got, got1, err := intDivision(tt.args.numerator, tt.args.denominator)
			if (err != nil) != tt.wantErr {
				t.Errorf("intDivision() error = %v, wantErr %v", err, tt.wantErr)
				return
			}
			if got != tt.want {
				t.Errorf("intDivision() got = %v, want %v", got, tt.want)
			}
			if got1 != tt.want1 {
				t.Errorf("intDivision() got1 = %v, want %v", got1, tt.want1)
			}
		})
	}
}
