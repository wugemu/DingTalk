.class public final Lkrm;
.super Ljava/lang/Object;
.source "AddressBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lkqa;)Lorg/apache/james/mime4j/dom/address/AddressList;
    .locals 4
    .param p0, "rawAddressList"    # Ljava/lang/String;
    .param p1, "monitor"    # Lkqa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/Reader;)V

    .line 63
    .local v1, "parser":Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
    :try_start_0
    invoke-static {}, Lkrr;->a()Lkrr;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a()Lkrd;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lkrr;->a(Lkrd;Lkqa;)Lorg/apache/james/mime4j/dom/address/AddressList;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
