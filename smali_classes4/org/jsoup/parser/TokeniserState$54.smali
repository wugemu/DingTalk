.class final enum Lorg/jsoup/parser/TokeniserState$54;
.super Lorg/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1227
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method final read(Lles;Llem;)V
    .locals 2
    .param p1, "t"    # Lles;
    .param p2, "r"    # Llem;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 1229
    invoke-virtual {p2}, Llem;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1230
    invoke-virtual {p1, p0}, Lles;->c(Lorg/jsoup/parser/TokeniserState;)V

    .line 1231
    iget-object v0, p1, Lles;->l:Lorg/jsoup/parser/Token$c;

    iput-boolean v1, v0, Lorg/jsoup/parser/Token$c;->e:Z

    .line 1232
    invoke-virtual {p1}, Lles;->d()V

    .line 1233
    sget-object v0, Lorg/jsoup/parser/TokeniserState$54;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 2113
    iput-object v0, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    .line 1251
    :goto_0
    return-void

    .line 1236
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Llem;->c([C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1237
    invoke-virtual {p2}, Llem;->e()V

    goto :goto_0

    .line 1238
    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p2, v0}, Llem;->b(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1239
    invoke-virtual {p1}, Lles;->d()V

    .line 1240
    sget-object v0, Lorg/jsoup/parser/TokeniserState$54;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lles;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 1241
    :cond_2
    const-string/jumbo v0, "PUBLIC"

    invoke-virtual {p2, v0}, Llem;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1242
    sget-object v0, Lorg/jsoup/parser/TokeniserState$54;->AfterDoctypePublicKeyword:Lorg/jsoup/parser/TokeniserState;

    .line 3113
    iput-object v0, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1243
    :cond_3
    const-string/jumbo v0, "SYSTEM"

    invoke-virtual {p2, v0}, Llem;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1244
    sget-object v0, Lorg/jsoup/parser/TokeniserState$54;->AfterDoctypeSystemKeyword:Lorg/jsoup/parser/TokeniserState;

    .line 4113
    iput-object v0, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1246
    :cond_4
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 1247
    iget-object v0, p1, Lles;->l:Lorg/jsoup/parser/Token$c;

    iput-boolean v1, v0, Lorg/jsoup/parser/Token$c;->e:Z

    .line 1248
    sget-object v0, Lorg/jsoup/parser/TokeniserState$54;->BogusDoctype:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lles;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 1236
    nop

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
    .end array-data
.end method
