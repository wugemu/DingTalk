.class final Lewn$13;
.super Ljava/lang/Object;
.source "TeleConfQuickStartCallHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewn;->a(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Leuw;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)Lcma;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leuw;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field final synthetic i:Ljava/lang/Long;

.field final synthetic j:Lewn;


# direct methods
.method constructor <init>(Lewn;Leuw;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lewn;

    .prologue
    .line 1224
    iput-object p1, p0, Lewn$13;->j:Lewn;

    iput-object p2, p0, Lewn$13;->a:Leuw;

    iput-object p3, p0, Lewn$13;->b:Ljava/lang/String;

    iput-object p4, p0, Lewn$13;->c:Landroid/app/Activity;

    iput-object p5, p0, Lewn$13;->d:Ljava/lang/String;

    iput-object p6, p0, Lewn$13;->e:Ljava/lang/String;

    iput-object p7, p0, Lewn$13;->f:Ljava/lang/String;

    iput-object p8, p0, Lewn$13;->g:Ljava/lang/String;

    iput-object p9, p0, Lewn$13;->h:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    iput-object p10, p0, Lewn$13;->i:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1224
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2227
    if-eqz p1, :cond_2

    .line 2228
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    .line 2229
    if-eqz v2, :cond_0

    iget-boolean v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    if-nez v0, :cond_0

    .line 2230
    iget-object v0, p0, Lewn$13;->a:Leuw;

    iput-boolean v1, v0, Leuw;->f:Z

    .line 2231
    iget-object v0, p0, Lewn$13;->a:Leuw;

    iput-boolean v1, v0, Leuw;->c:Z

    .line 2233
    :cond_0
    iget-object v0, p0, Lewn$13;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2234
    iget-object v0, p0, Lewn$13;->b:Ljava/lang/String;

    iput-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 2235
    const/4 v0, 0x1

    iput v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 2238
    :cond_1
    iget-object v0, p0, Lewn$13;->j:Lewn;

    iget-object v1, p0, Lewn$13;->c:Landroid/app/Activity;

    iget-object v3, p0, Lewn$13;->d:Ljava/lang/String;

    iget-object v4, p0, Lewn$13;->e:Ljava/lang/String;

    iget-object v5, p0, Lewn$13;->f:Ljava/lang/String;

    iget-object v6, p0, Lewn$13;->g:Ljava/lang/String;

    iget-object v7, p0, Lewn$13;->a:Leuw;

    iget-object v8, p0, Lewn$13;->h:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-static/range {v0 .. v8}, Lewn;->a(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Leuw;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    .line 2239
    :goto_0
    return-void

    .line 2241
    :cond_2
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lewn$13;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    .line 1252
    iget-object v3, p0, Lewn$13;->a:Leuw;

    iput-boolean v4, v3, Leuw;->f:Z

    .line 1253
    iget-object v3, p0, Lewn$13;->a:Leuw;

    iput-boolean v4, v3, Leuw;->c:Z

    .line 1254
    const/4 v2, 0x0

    .line 1255
    .local v2, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v3, p0, Lewn$13;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lewn$13;->i:Ljava/lang/Long;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lewn$13;->i:Ljava/lang/Long;

    .line 1256
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-lez v3, :cond_2

    .line 1257
    :cond_0
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .end local v2    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 1258
    .restart local v2    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v3, p0, Lewn$13;->i:Ljava/lang/Long;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lewn$13;->i:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_1
    iput-wide v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 1259
    iget-object v0, p0, Lewn$13;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1260
    iget-object v0, p0, Lewn$13;->b:Ljava/lang/String;

    iput-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 1261
    const/4 v0, 0x1

    iput v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 1264
    :cond_2
    iget-object v0, p0, Lewn$13;->j:Lewn;

    iget-object v1, p0, Lewn$13;->c:Landroid/app/Activity;

    iget-object v3, p0, Lewn$13;->d:Ljava/lang/String;

    iget-object v4, p0, Lewn$13;->e:Ljava/lang/String;

    iget-object v5, p0, Lewn$13;->f:Ljava/lang/String;

    iget-object v6, p0, Lewn$13;->g:Ljava/lang/String;

    iget-object v7, p0, Lewn$13;->a:Leuw;

    iget-object v8, p0, Lewn$13;->h:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-static/range {v0 .. v8}, Lewn;->a(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Leuw;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    .line 1265
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1248
    return-void
.end method
