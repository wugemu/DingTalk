.class final Ldbd$2;
.super Ljava/lang/Object;
.source "UserTaoResCardAbsViewHolder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldbd;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldbd;


# direct methods
.method constructor <init>(Ldbd;)V
    .locals 0
    .param p1, "this$0"    # Ldbd;

    .prologue
    .line 106
    iput-object p1, p0, Ldbd$2;->a:Ldbd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method
