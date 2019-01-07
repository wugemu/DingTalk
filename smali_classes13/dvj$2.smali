.class final Ldvj$2;
.super Ljava/lang/Object;
.source "MessageSelectHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldvj;->b(Lcom/alibaba/wukong/im/Conversation;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldvj;


# direct methods
.method constructor <init>(Ldvj;)V
    .locals 0
    .param p1, "this$0"    # Ldvj;

    .prologue
    .line 132
    iput-object p1, p0, Ldvj$2;->a:Ldvj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 135
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 136
    return-void
.end method
