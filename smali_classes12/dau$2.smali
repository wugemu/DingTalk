.class final Ldau$2;
.super Ljava/lang/Object;
.source "AbsJobCardViewHolder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldau;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldau;


# direct methods
.method constructor <init>(Ldau;)V
    .locals 0
    .param p1, "this$0"    # Ldau;

    .prologue
    .line 90
    iput-object p1, p0, Ldau$2;->a:Ldau;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method
