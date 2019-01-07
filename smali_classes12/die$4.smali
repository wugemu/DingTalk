.class public final Ldie$4;
.super Ljava/lang/Object;
.source "TopicEmotionCenter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$b;


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
    .line 162
    iput-object p1, p0, Ldie$4;->a:Ldie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 165
    iget-object v0, p0, Ldie$4;->a:Ldie;

    .line 1043
    iget-object v0, v0, Ldie;->d:Landroid/support/v4/view/ViewPager;

    .line 165
    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 166
    return-void
.end method
