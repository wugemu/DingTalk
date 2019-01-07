.class final Lbiu$8;
.super Ljava/lang/Object;
.source "SingleChatTaskDingHolder.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbiu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbiu;


# direct methods
.method constructor <init>(Lbiu;)V
    .locals 0
    .param p1, "this$0"    # Lbiu;

    .prologue
    .line 629
    iput-object p1, p0, Lbiu$8;->a:Lbiu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 632
    iget-object v0, p0, Lbiu$8;->a:Lbiu;

    .line 1065
    iget-object v0, v0, Lbiu;->i:Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;

    .line 632
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->setStrikeValue(F)V

    .line 633
    iget-object v0, p0, Lbiu$8;->a:Lbiu;

    .line 2065
    iget-object v0, v0, Lbiu;->g:Lcom/alibaba/android/ding/widget/DingVerticalAnimView;

    .line 633
    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->setAnimValue(F)V

    .line 634
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 638
    return-void
.end method
