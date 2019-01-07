.class final Lewv$2;
.super Ljava/lang/Object;
.source "TeleFloatingVoipManager.java"

# interfaces
.implements Lied$d;


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
    .line 137
    iput-object p1, p0, Lewv$2;->a:Lewv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .param p1, "duration"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 150
    iget-object v2, p0, Lewv$2;->a:Lewv;

    invoke-static {v2}, Lewv;->f(Lewv;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lewv$2;->a:Lewv;

    invoke-static {v2}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 151
    div-int/lit16 v0, p1, 0x3e8

    .line 152
    .local v0, "durSecs":I
    if-lez v0, :cond_0

    .line 153
    invoke-static {v0}, Leyr;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "durText":Ljava/lang/String;
    iget-object v2, p0, Lewv$2;->a:Lewv;

    invoke-static {v2}, Lewv;->g(Lewv;)Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(Ljava/lang/String;I)V

    .line 157
    .end local v0    # "durSecs":I
    .end local v1    # "durText":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .prologue
    .line 141
    return-void
.end method
