.class final Ldau$1;
.super Ljava/lang/Object;
.source "AbsJobCardViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldau;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ldau;


# direct methods
.method constructor <init>(Ldau;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldau;

    .prologue
    .line 84
    iput-object p1, p0, Ldau$1;->b:Ldau;

    iput-object p2, p0, Ldau$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    iget-object v0, p0, Ldau$1;->b:Ldau;

    iget-object v1, p0, Ldau$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldau;->a(Ljava/lang/String;)V

    .line 88
    return-void
.end method
