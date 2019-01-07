.class final Ldfn$1;
.super Lcpq;
.source "ServiceGroupAnswerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldfn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcpq",
        "<",
        "Ldfn;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcpq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1019
    new-instance v0, Ldfn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldfn;-><init>(B)V

    .line 16
    return-object v0
.end method
