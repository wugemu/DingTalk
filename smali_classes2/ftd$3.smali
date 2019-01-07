.class final Lftd$3;
.super Ljava/lang/Object;
.source "NameCardGuidePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lftd;->a(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lftd;


# direct methods
.method constructor <init>(Lftd;I)V
    .locals 0
    .param p1, "this$0"    # Lftd;

    .prologue
    .line 76
    iput-object p1, p0, Lftd$3;->b:Lftd;

    iput p2, p0, Lftd$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 76
    .line 1079
    iget-object v0, p0, Lftd$3;->b:Lftd;

    invoke-static {v0}, Lftd;->c(Lftd;)Lcli;

    move-result-object v0

    check-cast v0, Lfsx$b;

    const/4 v1, 0x1

    iget v2, p0, Lftd$3;->a:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lfsx$b;->a(ZILjava/lang/String;)V

    .line 76
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 89
    iget-object v0, p0, Lftd$3;->b:Lftd;

    invoke-static {v0}, Lftd;->d(Lftd;)Lcli;

    move-result-object v0

    check-cast v0, Lfsx$b;

    const/4 v1, 0x0

    iget v2, p0, Lftd$3;->a:I

    invoke-interface {v0, v1, v2, p2}, Lfsx$b;->a(ZILjava/lang/String;)V

    .line 90
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 85
    return-void
.end method
