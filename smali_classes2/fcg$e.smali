.class final Lfcg$e;
.super Lfcg$c;
.source "PostHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfcg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lfcg;


# direct methods
.method constructor <init>(Lfcg;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lfcg;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 191
    iput-object p1, p0, Lfcg$e;->a:Lfcg;

    .line 192
    invoke-direct {p0, p1, p2}, Lfcg$c;-><init>(Lfcg;Landroid/view/View;)V

    .line 193
    return-void
.end method


# virtual methods
.method final a(Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;)V
    .locals 0
    .param p1, "noticeObject"    # Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;

    .prologue
    .line 197
    return-void
.end method

.method final b(Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;)V
    .locals 0
    .param p1, "noticeObject"    # Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;

    .prologue
    .line 202
    return-void
.end method
