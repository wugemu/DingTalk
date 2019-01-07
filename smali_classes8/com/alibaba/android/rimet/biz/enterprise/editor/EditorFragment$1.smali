.class final Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$1;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$1;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$1;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->a(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)V

    .line 164
    return-void
.end method
