.class public final Ldna;
.super Ljava/lang/Object;
.source "MdParserFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ldne;)Lldm;
    .locals 3
    .param p0, "cacher"    # Ldne;

    .prologue
    .line 1048
    new-instance v0, Lldm$a;

    invoke-direct {v0}, Lldm$a;-><init>()V

    .line 16
    new-instance v1, Ldnz;

    invoke-direct {v1, p0}, Ldnz;-><init>(Ldne;)V

    .line 1139
    iget-object v2, v0, Lldm$a;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2101
    new-instance v1, Lldm;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lldm;-><init>(Lldm$a;B)V

    .line 16
    return-object v1
.end method
