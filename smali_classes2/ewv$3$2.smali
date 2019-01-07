.class final Lewv$3$2;
.super Ljava/lang/Object;
.source "TeleFloatingVoipManager.java"

# interfaces
.implements Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewv$3;->b(Ljava/lang/String;)V
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
    .line 234
    iput-object p1, p0, Lewv$3$2;->a:Lewv$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 243
    const/4 v1, 0x0

    invoke-static {v1}, Leyr;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "durText":Ljava/lang/String;
    iget-object v1, p0, Lewv$3$2;->a:Lewv$3;

    iget-object v1, v1, Lewv$3;->a:Lewv;

    invoke-static {v1}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(Ljava/lang/String;I)V

    .line 245
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method
