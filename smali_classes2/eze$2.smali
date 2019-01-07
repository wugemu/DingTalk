.class final Leze$2;
.super Ljava/lang/Object;
.source "TeleConfCompereHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leze;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leze;


# direct methods
.method constructor <init>(Leze;)V
    .locals 0
    .param p1, "this$0"    # Leze;

    .prologue
    .line 107
    iput-object p1, p0, Leze$2;->a:Leze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 110
    iget-object v0, p0, Leze$2;->a:Leze;

    .line 1035
    iget-object v0, v0, Leze;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    .line 110
    iget-object v1, p0, Leze$2;->a:Leze;

    .line 2035
    iget-object v1, v1, Leze;->b:Lezd;

    .line 110
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a(Lezd;I)V

    .line 111
    return-void
.end method
