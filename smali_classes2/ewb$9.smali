.class final Lewb$9;
.super Ljava/lang/Object;
.source "Navigation.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewb;->a(Landroid/app/Activity;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/teleconf/data/ConfRecordItem;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V
    .locals 0

    .prologue
    .line 1057
    iput-object p1, p0, Lewb$9;->a:Landroid/app/Activity;

    iput-object p2, p0, Lewb$9;->b:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1057
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;

    .line 2060
    if-eqz p1, :cond_0

    .line 2061
    iget-object v0, p0, Lewb$9;->a:Landroid/app/Activity;

    iget-object v1, p0, Lewb$9;->b:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    invoke-static {v0, v1, p1}, Lewb;->a(Landroid/app/Activity;Lcom/alibaba/android/teleconf/data/ConfRecordItem;Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;)V

    .line 1057
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1072
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewb;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 1073
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1072
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1068
    return-void
.end method
