.class final Lekw$4$1;
.super Ljava/lang/Object;
.source "PwdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lekw$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lekw$4;


# direct methods
.method constructor <init>(Lekw$4;JLandroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lekw$4;

    .prologue
    .line 197
    iput-object p1, p0, Lekw$4$1;->c:Lekw$4;

    iput-wide p2, p0, Lekw$4$1;->a:J

    iput-object p4, p0, Lekw$4$1;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 200
    new-instance v0, Lekv;

    invoke-direct {v0}, Lekv;-><init>()V

    .line 201
    .local v0, "dataSource":Leku;
    iget-wide v4, p0, Lekw$4$1;->a:J

    invoke-interface {v0, v4, v5}, Leku;->a(J)Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;

    move-result-object v3

    .line 202
    .local v3, "securityEntry":Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;->screenLock:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 203
    const-string/jumbo v4, "pwd"

    const-string/jumbo v5, "PwdManager"

    const-string/jumbo v6, "use database screen lock"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v2, v3, Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;->screenLock:Ljava/lang/String;

    .line 205
    .local v2, "screenLock":Ljava/lang/String;
    iget-object v4, p0, Lekw$4$1;->b:Landroid/os/Handler;

    new-instance v5, Lekw$4$1$1;

    invoke-direct {v5, p0, v2}, Lekw$4$1$1;-><init>(Lekw$4$1;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 236
    :goto_0
    return-void

    .line 214
    .end local v2    # "screenLock":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "pwd"

    const-string/jumbo v5, "PwdManager"

    const-string/jumbo v6, "database screen lock is empty"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    if-nez v3, :cond_1

    .line 216
    new-instance v3, Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;

    .end local v3    # "securityEntry":Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;
    invoke-direct {v3}, Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;-><init>()V

    .line 217
    .restart local v3    # "securityEntry":Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;
    iget-wide v4, p0, Lekw$4$1;->a:J

    iput-wide v4, v3, Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;->uid:J

    .line 220
    :cond_1
    :try_start_0
    const-string/jumbo v4, "1"

    iget-wide v6, p0, Lekw$4$1;->a:J

    invoke-static {v4, v6, v7}, Lcni;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;->screenLock:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_1
    iget-object v2, v3, Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;->screenLock:Ljava/lang/String;

    .line 226
    .restart local v2    # "screenLock":Ljava/lang/String;
    invoke-interface {v0, v3}, Leku;->a(Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;)I

    .line 227
    iget-object v4, p0, Lekw$4$1;->b:Landroid/os/Handler;

    new-instance v5, Lekw$4$1$2;

    invoke-direct {v5, p0, v2}, Lekw$4$1$2;-><init>(Lekw$4$1;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 221
    .end local v2    # "screenLock":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;->screenLock:Ljava/lang/String;

    .line 223
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
