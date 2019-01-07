.class final Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2;
.super Landroid/text/Editable$Factory;
.source "EditorFragment.java"


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
    .line 170
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-direct {p0}, Landroid/text/Editable$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public final newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 174
    new-instance v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2$1;-><init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$2;Ljava/lang/CharSequence;)V

    return-object v0
.end method
