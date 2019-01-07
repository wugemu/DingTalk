.class final Lduz$1;
.super Ljava/lang/Object;
.source "CSpaceMessageSelectHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lduz;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lduz;


# direct methods
.method constructor <init>(Lduz;)V
    .locals 0
    .param p1, "this$0"    # Lduz;

    .prologue
    .line 99
    iput-object p1, p0, Lduz$1;->a:Lduz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lduz$1;->a:Lduz;

    invoke-static {v0}, Lduz;->a(Lduz;)V

    .line 103
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 104
    return-void
.end method
