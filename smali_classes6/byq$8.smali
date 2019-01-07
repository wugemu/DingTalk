.class final Lbyq$8;
.super Ljava/lang/Object;
.source "StartLiveUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbyq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

.field final synthetic d:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lbyq$8;->a:Landroid/app/Activity;

    iput-object p2, p0, Lbyq$8;->b:Ljava/lang/String;

    iput-object p3, p0, Lbyq$8;->c:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    iput-object p4, p0, Lbyq$8;->d:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 266
    iget-object v0, p0, Lbyq$8;->a:Landroid/app/Activity;

    invoke-static {v0}, Lbyf;->a(Landroid/app/Activity;)V

    .line 267
    iget-object v0, p0, Lbyq$8;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbyq$8;->b:Ljava/lang/String;

    iget-object v2, p0, Lbyq$8;->c:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    iget-object v3, p0, Lbyq$8;->d:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, v2, v3}, Lbyq;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;Lcom/alibaba/wukong/Callback;)V

    .line 268
    return-void
.end method
