.class final Lbnp$a;
.super Lbnp$c;
.source "PostHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbnp;


# direct methods
.method constructor <init>(Lbnp;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lbnp;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 281
    iput-object p1, p0, Lbnp$a;->a:Lbnp;

    .line 282
    invoke-direct {p0, p1, p2}, Lbnp$c;-><init>(Lbnp;Landroid/view/View;)V

    .line 283
    return-void
.end method


# virtual methods
.method final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;)V
    .locals 0
    .param p1, "noticeObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    .prologue
    .line 287
    return-void
.end method

.method final b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;)V
    .locals 0
    .param p1, "noticeObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    .prologue
    .line 299
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 291
    iget-object v0, p0, Lbnp$a;->a:Lbnp;

    invoke-static {v0}, Lbnp;->a(Lbnp;)Lcou;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lbnp$a;->a:Lbnp;

    invoke-static {v0}, Lbnp;->a(Lbnp;)Lcou;

    move-result-object v0

    invoke-interface {v0}, Lcou;->a()V

    .line 294
    :cond_0
    return-void
.end method
