.class final Lbzb$3;
.super Ljava/lang/Object;
.source "AvoidOnRequestPermission.java"

# interfaces
.implements Lbza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbzb;->a(Landroid/support/v4/app/Fragment;Landroid/app/Activity;[Ljava/lang/String;Lbzc;)Lbza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lbzc;

.field final synthetic c:Landroid/support/v4/app/Fragment;

.field final synthetic d:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lbzc;Landroid/support/v4/app/Fragment;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lbzb$3;->a:Landroid/app/Activity;

    iput-object p2, p0, Lbzb$3;->b:Lbzc;

    iput-object p3, p0, Lbzb$3;->c:Landroid/support/v4/app/Fragment;

    iput-object p4, p0, Lbzb$3;->d:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 201
    iget-object v0, p0, Lbzb$3;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbzb$3;->d:[Ljava/lang/String;

    invoke-static {v0, v1}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lbzb$3;->b:Lbzc;

    invoke-interface {v0}, Lbzc;->grant()V

    .line 203
    iget-object v0, p0, Lbzb$3;->c:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lbzb$3;->c:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lbzb$3;->d:[Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->grant:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    .line 225
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lbzb$3;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbzb$3;->d:[Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->grant:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lbzb$3;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbzb$3;->d:[Ljava/lang/String;

    invoke-static {v0, v1}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 210
    iget-object v0, p0, Lbzb$3;->b:Lbzc;

    invoke-interface {v0}, Lbzc;->onNeverAsk()V

    .line 211
    iget-object v0, p0, Lbzb$3;->c:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lbzb$3;->c:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lbzb$3;->d:[Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onNeverAsk:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 214
    :cond_2
    iget-object v0, p0, Lbzb$3;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbzb$3;->d:[Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onNeverAsk:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 217
    :cond_3
    iget-object v0, p0, Lbzb$3;->b:Lbzc;

    invoke-interface {v0}, Lbzc;->onDenied()V

    .line 218
    iget-object v0, p0, Lbzb$3;->c:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_4

    .line 219
    iget-object v0, p0, Lbzb$3;->c:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lbzb$3;->d:[Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 221
    :cond_4
    iget-object v0, p0, Lbzb$3;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbzb$3;->d:[Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method public final a([Ljava/lang/String;[I)V
    .locals 2
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 173
    iget-object v0, p0, Lbzb$3;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lbzb$3;->b:Lbzc;

    invoke-interface {v0}, Lbzc;->grant()V

    .line 175
    iget-object v0, p0, Lbzb$3;->c:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lbzb$3;->c:Landroid/support/v4/app/Fragment;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->grant:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    .line 197
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lbzb$3;->a:Landroid/app/Activity;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->grant:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lbzb$3;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 182
    iget-object v0, p0, Lbzb$3;->b:Lbzc;

    invoke-interface {v0}, Lbzc;->onNeverAsk()V

    .line 183
    iget-object v0, p0, Lbzb$3;->c:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lbzb$3;->c:Landroid/support/v4/app/Fragment;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onNeverAsk:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lbzb$3;->a:Landroid/app/Activity;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onNeverAsk:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 189
    :cond_3
    iget-object v0, p0, Lbzb$3;->b:Lbzc;

    invoke-interface {v0}, Lbzc;->onDenied()V

    .line 190
    iget-object v0, p0, Lbzb$3;->c:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_4

    .line 191
    iget-object v0, p0, Lbzb$3;->c:Landroid/support/v4/app/Fragment;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 193
    :cond_4
    iget-object v0, p0, Lbzb$3;->a:Landroid/app/Activity;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method
