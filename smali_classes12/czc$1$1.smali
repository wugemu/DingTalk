.class final Lczc$1$1;
.super Ljava/lang/Object;
.source "UserLuckyTimeRedPacketRemainViewHolder.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lczc$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lczc$1;


# direct methods
.method constructor <init>(Lczc$1;)V
    .locals 0
    .param p1, "this$1"    # Lczc$1;

    .prologue
    .line 48
    iput-object p1, p0, Lczc$1$1;->a:Lczc$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "paramIntent"    # Landroid/content/Intent;

    .prologue
    .line 51
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    return-object p1
.end method
