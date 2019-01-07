.class final Ldfa$1;
.super Ljava/lang/Object;
.source "AbsConfigChatPlugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldfa;->a(Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldsd$a;

.field final synthetic b:Ldfa;


# direct methods
.method constructor <init>(Ldfa;Ldsd$a;)V
    .locals 0
    .param p1, "this$0"    # Ldfa;

    .prologue
    .line 117
    iput-object p1, p0, Ldfa$1;->b:Ldfa;

    iput-object p2, p0, Ldfa$1;->a:Ldsd$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    iget-object v0, p0, Ldfa$1;->b:Ldfa;

    iget-object v1, p0, Ldfa$1;->a:Ldsd$a;

    iget-object v1, v1, Ldsd$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ldfa;->a(Ldfa;Ljava/lang/String;)V

    .line 121
    return-void
.end method
