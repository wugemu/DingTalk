.class public final Ltf;
.super Lxq;
.source "CSpaceBundle.java"


# static fields
.field public static a:Ltf;


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/orm/Configuration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lxq;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltf;->b:Ljava/util/ArrayList;

    .line 30
    iget-object v0, p0, Ltf;->b:Ljava/util/ArrayList;

    sget-object v1, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method


# virtual methods
.method public final a()Lcom/alibaba/alimei/framework/account/AccountListener;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/orm/Configuration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Ltf;->b:Ljava/util/ArrayList;

    return-object v0
.end method
