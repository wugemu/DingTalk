.class final Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$3;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$3;->b:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 285
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$3;->b:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    .line 286
    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->c(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method
