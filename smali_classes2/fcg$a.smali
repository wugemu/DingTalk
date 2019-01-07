.class final Lfcg$a;
.super Lfcg$c;
.source "PostHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfcg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lfcg;


# direct methods
.method constructor <init>(Lfcg;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lfcg;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 285
    iput-object p1, p0, Lfcg$a;->a:Lfcg;

    .line 286
    invoke-direct {p0, p1, p2}, Lfcg$c;-><init>(Lfcg;Landroid/view/View;)V

    .line 287
    return-void
.end method


# virtual methods
.method final a(Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;)V
    .locals 0
    .param p1, "noticeObject"    # Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;

    .prologue
    .line 291
    return-void
.end method

.method final b(Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;)V
    .locals 0
    .param p1, "noticeObject"    # Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;

    .prologue
    .line 303
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 295
    iget-object v0, p0, Lfcg$a;->a:Lfcg;

    invoke-static {v0}, Lfcg;->a(Lfcg;)Lcou;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lfcg$a;->a:Lfcg;

    invoke-static {v0}, Lfcg;->a(Lfcg;)Lcou;

    move-result-object v0

    invoke-interface {v0}, Lcou;->a()V

    .line 298
    :cond_0
    return-void
.end method
