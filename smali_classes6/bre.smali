.class public final Lbre;
.super Ljava/lang/Object;
.source "DocToolSource.java"

# interfaces
.implements Lbqw;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbqy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbre;->a:Ljava/util/List;

    .line 20
    iget-object v0, p0, Lbre;->a:Ljava/util/List;

    new-instance v1, Lbrc;

    invoke-direct {v1}, Lbrc;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lbre;->a:Ljava/util/List;

    new-instance v1, Lbra;

    invoke-direct {v1}, Lbra;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lbre;->a:Ljava/util/List;

    new-instance v1, Lbrd;

    invoke-direct {v1}, Lbrd;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lbre;->a:Ljava/util/List;

    new-instance v1, Lbqz;

    invoke-direct {v1}, Lbqz;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lbre;->a:Ljava/util/List;

    new-instance v1, Lbrb;

    invoke-direct {v1}, Lbrb;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lbre;->a:Ljava/util/List;

    new-instance v1, Lbrm;

    invoke-direct {v1}, Lbrm;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lbre;->a:Ljava/util/List;

    new-instance v1, Lbrg;

    invoke-direct {v1}, Lbrg;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbqy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lbre;->a:Ljava/util/List;

    return-object v0
.end method
