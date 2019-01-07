.class final Lbbq$7;
.super Ljava/lang/Object;
.source "DingDataSetChangedNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbq;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Lbbq;


# direct methods
.method constructor <init>(Lbbq;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0
    .param p1, "this$0"    # Lbbq;

    .prologue
    .line 158
    iput-object p1, p0, Lbbq$7;->b:Lbbq;

    iput-object p2, p0, Lbbq$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 161
    invoke-static {}, Lbbv;->a()Lbbv;

    iget-object v0, p0, Lbbq$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbbv;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 162
    invoke-static {}, Lbjw;->a()Lbjw;

    move-result-object v7

    iget-object v8, p0, Lbbq$7;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 3117
    if-eqz v8, :cond_0

    .line 3120
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v2

    const-string/jumbo v4, "common_contact_ding"

    const-wide/16 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;JLjava/lang/String;J)V

    .line 4122
    iget v0, v8, Lcom/alibaba/android/ding/base/objects/ObjectDing;->C:I

    .line 3121
    invoke-static {v0}, Lbjw;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3125
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "isSilent"

    invoke-virtual {v8, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3129
    invoke-static {v8}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3134
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    .line 3135
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v2, Laxp$i;->app_name:I

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3136
    invoke-static {v8}, Lbjw;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v7

    .line 3133
    invoke-virtual/range {v0 .. v5}, Lbjw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 163
    :cond_0
    return-void
.end method
