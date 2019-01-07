.class final Lewv$3$1;
.super Ljava/lang/Object;
.source "TeleFloatingVoipManager.java"

# interfaces
.implements Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewv$3;->a(Ljava/lang/String;Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewv$3;


# direct methods
.method constructor <init>(Lewv$3;)V
    .locals 0
    .param p1, "this$1"    # Lewv$3;

    .prologue
    .line 182
    iput-object p1, p0, Lewv$3$1;->a:Lewv$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 190
    iget-object v2, p0, Lewv$3$1;->a:Lewv$3;

    iget-object v2, v2, Lewv$3;->a:Lewv;

    invoke-static {v2}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 192
    invoke-static {v4}, Leyr;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "durText":Ljava/lang/String;
    iget-object v2, p0, Lewv$3$1;->a:Lewv$3;

    iget-object v2, v2, Lewv$3;->a:Lewv;

    invoke-static {v2}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(Ljava/lang/String;I)V

    .line 194
    iget-object v2, p0, Lewv$3$1;->a:Lewv$3;

    iget-object v2, v2, Lewv$3;->a:Lewv;

    invoke-static {v2}, Lewv;->h(Lewv;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "hangupTxt":Ljava/lang/String;
    iget-object v2, p0, Lewv$3$1;->a:Lewv$3;

    iget-object v2, v2, Lewv$3;->a:Lewv;

    invoke-static {v2}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3, v4}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(Ljava/lang/String;IZ)V

    .line 197
    .end local v0    # "durText":Ljava/lang/String;
    .end local v1    # "hangupTxt":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method
