.class final Lbnp$e;
.super Lbnp$c;
.source "PostHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lbnp;


# direct methods
.method constructor <init>(Lbnp;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lbnp;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 187
    iput-object p1, p0, Lbnp$e;->a:Lbnp;

    .line 188
    invoke-direct {p0, p1, p2}, Lbnp$c;-><init>(Lbnp;Landroid/view/View;)V

    .line 189
    return-void
.end method


# virtual methods
.method final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;)V
    .locals 0
    .param p1, "noticeObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    .prologue
    .line 193
    return-void
.end method

.method final b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;)V
    .locals 0
    .param p1, "noticeObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    .prologue
    .line 198
    return-void
.end method
