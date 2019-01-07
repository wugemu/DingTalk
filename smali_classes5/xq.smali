.class public abstract Lxq;
.super Ljava/lang/Object;
.source "FrameworkBundle.java"


# instance fields
.field public c:Z

.field public d:Lcom/alibaba/alimei/orm/CipherGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lxq;->c:Z

    .line 19
    return-void
.end method


# virtual methods
.method public abstract a()Lcom/alibaba/alimei/framework/account/AccountListener;
.end method

.method public abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/orm/Configuration;",
            ">;"
        }
    .end annotation
.end method
