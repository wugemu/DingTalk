.class public final Ldie$3;
.super Ljava/lang/Object;
.source "TopicEmotionCenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldie;


# direct methods
.method public constructor <init>(Ldie;)V
    .locals 0
    .param p1, "this$0"    # Ldie;

    .prologue
    .line 153
    iput-object p1, p0, Ldie$3;->a:Ldie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v0, p0, Ldie$3;->a:Ldie;

    .line 1043
    iget-object v0, v0, Ldie;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 156
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->j()V

    .line 157
    return-void
.end method
