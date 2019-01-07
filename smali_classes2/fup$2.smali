.class final Lfup$2;
.super Ljava/lang/Object;
.source "BiometricTask.java"

# interfaces
.implements Lfur;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfup;


# direct methods
.method constructor <init>(Lfup;)V
    .locals 0
    .param p1, "this$0"    # Lfup;

    .prologue
    .line 251
    iput-object p1, p0, Lfup$2;->a:Lfup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lfus;Ljava/lang/String;)V
    .locals 5
    .param p1, "task"    # Lfus;
    .param p2, "finalUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 263
    if-eqz p1, :cond_0

    iget-object v1, p0, Lfup$2;->a:Lfup;

    .line 5033
    iget-object v1, v1, Lfup;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    .line 263
    sget-object v2, Lcom/alibaba/android/user/outverify/TaskStatus;->DOING:Lcom/alibaba/android/user/outverify/TaskStatus;

    if-ne v1, v2, :cond_0

    .line 264
    iget-object v1, p0, Lfup$2;->a:Lfup;

    .line 6033
    iget-object v1, v1, Lfup;->f:Ljava/util/HashMap;

    .line 6092
    iget-object v2, p1, Lfus;->b:Ljava/lang/String;

    .line 264
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfup$a;

    .line 265
    .local v0, "taskResult":Lfup$a;
    if-eqz v0, :cond_1

    .line 266
    iput-boolean v3, v0, Lfup$a;->a:Z

    .line 267
    iput-boolean v3, v0, Lfup$a;->c:Z

    .line 268
    iput-object v4, v0, Lfup$a;->d:Ljava/lang/String;

    .line 269
    iput-object v4, v0, Lfup$a;->e:Ljava/lang/String;

    .line 270
    iput-object p2, v0, Lfup$a;->f:Ljava/lang/String;

    .line 271
    iget-object v1, p0, Lfup$2;->a:Lfup;

    invoke-static {v1}, Lfup;->a(Lfup;)V

    .line 278
    .end local v0    # "taskResult":Lfup$a;
    :cond_0
    :goto_0
    return-void

    .line 273
    .restart local v0    # "taskResult":Lfup$a;
    :cond_1
    iget-object v1, p0, Lfup$2;->a:Lfup;

    .line 7033
    iget-object v1, v1, Lfup;->e:Landroid/app/Activity;

    .line 273
    invoke-static {v1}, Lfup;->c(Landroid/app/Activity;)V

    .line 274
    iget-object v1, p0, Lfup$2;->a:Lfup;

    .line 8033
    iget-object v1, v1, Lfup;->e:Landroid/app/Activity;

    .line 274
    const-string/jumbo v2, "common verify success but not match any task"

    iget-object v3, p0, Lfup$2;->a:Lfup;

    .line 9033
    iget-object v3, v3, Lfup;->c:Lchv;

    .line 274
    invoke-static {v1, v4, v2, v3}, Lfup;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lchv;)V

    .line 275
    iget-object v1, p0, Lfup$2;->a:Lfup;

    invoke-virtual {v1}, Lfup;->a()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 254
    iget-object v0, p0, Lfup$2;->a:Lfup;

    .line 1033
    iget-object v0, v0, Lfup;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    .line 254
    sget-object v1, Lcom/alibaba/android/user/outverify/TaskStatus;->DOING:Lcom/alibaba/android/user/outverify/TaskStatus;

    if-ne v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Lfup$2;->a:Lfup;

    .line 2033
    iget-object v0, v0, Lfup;->e:Landroid/app/Activity;

    .line 255
    invoke-static {v0}, Lfup;->c(Landroid/app/Activity;)V

    .line 256
    iget-object v0, p0, Lfup$2;->a:Lfup;

    .line 3033
    iget-object v0, v0, Lfup;->e:Landroid/app/Activity;

    .line 256
    iget-object v1, p0, Lfup$2;->a:Lfup;

    .line 4033
    iget-object v1, v1, Lfup;->c:Lchv;

    .line 256
    invoke-static {v0, p1, p2, v1}, Lfup;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lchv;)V

    .line 257
    iget-object v0, p0, Lfup$2;->a:Lfup;

    invoke-virtual {v0}, Lfup;->a()V

    .line 259
    :cond_0
    return-void
.end method
