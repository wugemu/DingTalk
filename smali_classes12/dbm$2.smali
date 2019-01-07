.class final Ldbm$2;
.super Ljava/lang/Object;
.source "UserTaoRedPackageCardAbsViewHolder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldbm;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldbm;


# direct methods
.method constructor <init>(Ldbm;)V
    .locals 0
    .param p1, "this$0"    # Ldbm;

    .prologue
    .line 117
    iput-object p1, p0, Ldbm$2;->a:Ldbm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method
