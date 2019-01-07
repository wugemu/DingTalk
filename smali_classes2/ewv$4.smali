.class final Lewv$4;
.super Ljava/lang/Object;
.source "TeleFloatingVoipManager.java"

# interfaces
.implements Lied$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewv;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewv;


# direct methods
.method constructor <init>(Lewv;)V
    .locals 0
    .param p1, "this$0"    # Lewv;

    .prologue
    .line 304
    iput-object p1, p0, Lewv$4;->a:Lewv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lied$b;)Z
    .locals 11
    .param p1, "errorInfo"    # Lied$b;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 307
    if-nez p1, :cond_0

    .line 334
    :goto_0
    return v9

    .line 310
    :cond_0
    iget v0, p1, Lied$b;->a:I

    .line 311
    .local v0, "errCode":I
    iget-object v1, p1, Lied$b;->b:Ljava/lang/String;

    .line 312
    .local v1, "errReason":Ljava/lang/String;
    const-string/jumbo v4, "tele_conf"

    invoke-static {}, Lewv;->f()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "onError code "

    aput-object v7, v6, v9

    const/4 v7, 0x1

    .line 313
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, ", reason "

    aput-object v8, v6, v7

    aput-object v1, v6, v10

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 312
    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    sget-object v4, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NoErr:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v4}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v4

    if-eq v0, v4, :cond_1

    .line 315
    const/16 v4, 0x9

    invoke-static {v4, v1}, Lewc;->a(ILjava/lang/String;)V

    .line 317
    :cond_1
    iget-object v4, p0, Lewv$4;->a:Lewv;

    invoke-static {v4, v0}, Lewv;->a(Lewv;I)V

    .line 318
    iget-object v4, p0, Lewv$4;->a:Lewv;

    invoke-static {v4}, Lewv;->f(Lewv;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lewv$4;->a:Lewv;

    invoke-static {v4}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 319
    iget-object v4, p0, Lewv$4;->a:Lewv;

    invoke-static {v4, v0}, Lewv;->c(Lewv;I)Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "toast":Ljava/lang/String;
    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    .line 322
    iget-object v4, p0, Lewv$4;->a:Lewv;

    invoke-static {v4, v0}, Lewv;->d(Lewv;I)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "state":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 324
    iget-object v4, p0, Lewv$4;->a:Lewv;

    invoke-static {v4}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v4

    invoke-virtual {v4, v2, v10}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(Ljava/lang/String;I)V

    .line 326
    :cond_2
    iget-object v4, p0, Lewv$4;->a:Lewv;

    invoke-static {v4}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->c()V

    .line 328
    .end local v2    # "state":Ljava/lang/String;
    .end local v3    # "toast":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lewv$4$1;

    invoke-direct {v5, p0}, Lewv$4$1;-><init>(Lewv$4;)V

    const-wide/16 v6, 0x258

    invoke-virtual {v4, v5, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
