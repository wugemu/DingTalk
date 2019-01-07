.class final Lewr$1;
.super Ljava/lang/Object;
.source "TeleConfVoipHelper.java"

# interfaces
.implements Liel$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewr;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewr;


# direct methods
.method constructor <init>(Lewr;)V
    .locals 0
    .param p1, "this$0"    # Lewr;

    .prologue
    .line 113
    iput-object p1, p0, Lewr$1;->a:Lewr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "log"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const-string/jumbo v0, "tele_voip"

    invoke-static {}, Lewr;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method
