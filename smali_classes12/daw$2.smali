.class final Ldaw$2;
.super Ljava/lang/Object;
.source "AbsResumeCardViewHolder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldaw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldaw;


# direct methods
.method constructor <init>(Ldaw;)V
    .locals 0
    .param p1, "this$0"    # Ldaw;

    .prologue
    .line 121
    iput-object p1, p0, Ldaw$2;->a:Ldaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method
