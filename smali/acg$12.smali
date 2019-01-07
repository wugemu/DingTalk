.class final Lacg$12;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcma;


# direct methods
.method constructor <init>(JLjava/lang/String;Landroid/content/Context;Lcma;)V
    .locals 1

    .prologue
    .line 271
    iput-wide p1, p0, Lacg$12;->a:J

    iput-object p3, p0, Lacg$12;->b:Ljava/lang/String;

    iput-object p4, p0, Lacg$12;->c:Landroid/content/Context;

    iput-object p5, p0, Lacg$12;->d:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 271
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1274
    iget-wide v0, p0, Lacg$12;->a:J

    iget-object v2, p0, Lacg$12;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lacg;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;JLjava/lang/String;)Z

    move-result v0

    .line 1275
    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lacg$12;->c:Landroid/content/Context;

    iget-wide v2, p0, Lacg$12;->a:J

    iget-object v1, p0, Lacg$12;->b:Ljava/lang/String;

    iget-object v4, p0, Lacg$12;->d:Lcma;

    invoke-static {v0, v2, v3, v1, v4}, Lacg;->a(Landroid/content/Context;JLjava/lang/String;Lcma;)V

    :goto_0
    return-void

    .line 1278
    :cond_0
    const-string/jumbo v0, "not found new distribute email in remote profile"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 1280
    iget-object v0, p0, Lacg$12;->c:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lacg$12;->d:Lcma;

    invoke-static {v0, v1, v2}, Lacg;->a(Landroid/content/Context;ILcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 290
    invoke-static {p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lacg$12;->c:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lacg$12;->d:Lcma;

    invoke-static {v0, v1, v2}, Lacg;->a(Landroid/content/Context;ILcma;)V

    .line 293
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 286
    return-void
.end method
