.class final Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;
.super Ljava/lang/Object;
.source "EditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/io/File;

.field d:Z

.field final synthetic e:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;)V
    .locals 0

    .prologue
    .line 1451
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->e:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1452
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "mLocalUrl"    # Ljava/lang/String;
    .param p3, "mIsSendOrigin"    # Z

    .prologue
    .line 1454
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->e:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1455
    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->a:Ljava/lang/String;

    .line 1456
    iput-boolean p3, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->d:Z

    .line 1457
    return-void
.end method
