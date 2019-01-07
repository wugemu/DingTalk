.class final Lcwo$1;
.super Ljava/lang/Object;
.source "NewDingCardViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcwo;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcwo;


# direct methods
.method constructor <init>(Lcwo;)V
    .locals 0
    .param p1, "this$0"    # Lcwo;

    .prologue
    .line 115
    iput-object p1, p0, Lcwo$1;->a:Lcwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcwo$1;->a:Lcwo;

    invoke-static {v0}, Lcwo;->a(Lcwo;)Lcom/alibaba/android/ding/base/objects/DingCardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingCardView;->a()V

    .line 119
    return-void
.end method
