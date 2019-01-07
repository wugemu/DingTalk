.class final Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$1;
.super Ljava/lang/Object;
.source "DocLensActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocLensActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 90
    invoke-static {}, Lcom/alibaba/dingtalk/doclens/DocStorageUtil;->a()V

    .line 91
    return-void
.end method
