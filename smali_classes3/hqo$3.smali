.class final Lhqo$3;
.super Ljava/lang/Object;
.source "OANotifyPushHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhqo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhjw;

.field final synthetic b:Lhqo;


# direct methods
.method constructor <init>(Lhqo;Lhjw;)V
    .locals 0
    .param p1, "this$0"    # Lhqo;

    .prologue
    .line 169
    iput-object p1, p0, Lhqo$3;->b:Lhqo;

    iput-object p2, p0, Lhqo$3;->a:Lhjw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 173
    :try_start_0
    invoke-static {}, Lhrt;->a()Lhrt;

    move-result-object v0

    iget-object v1, p0, Lhqo$3;->a:Lhjw;

    iget-object v1, v1, Lhjw;->f:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 173
    invoke-virtual {v0, v1}, Lhrt;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    invoke-static {}, Lhgh;->a()Lhgh;

    move-result-object v1

    iget-object v0, p0, Lhqo$3;->a:Lhjw;

    iget-object v2, v0, Lhjw;->i:Ljava/lang/String;

    iget-object v0, p0, Lhqo$3;->a:Lhjw;

    iget-object v5, v0, Lhjw;->c:Ljava/lang/String;

    iget-object v0, p0, Lhqo$3;->a:Lhjw;

    iget-object v6, v0, Lhjw;->d:Ljava/lang/String;

    .line 1195
    invoke-virtual {v1}, Lhgh;->b()V

    .line 1197
    new-instance v0, Lhgh$2;

    invoke-direct {v0, v1}, Lhgh$2;-><init>(Lhgh;)V

    iput-object v0, v1, Lhgh;->d:Ljava/lang/Runnable;

    .line 1205
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v3, v1, Lhgh;->d:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1388

    invoke-virtual {v0, v3, v8, v9}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1207
    sget v0, Lhgh;->a:I

    iput v0, v1, Lhgh;->e:I

    .line 1208
    sget v3, Lhdn$k;->icon_checkbox_fill:I

    sget v4, Lhdn$e;->fast_success:I

    const-wide/16 v8, 0x0

    move v10, v7

    invoke-virtual/range {v1 .. v10}, Lhgh;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZJI)V

    .line 1210
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "KaoQinViewImpl"

    const-string/jumbo v2, "[Device Beacon] KaoQinViewImpl showSuccessPopWindow"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
