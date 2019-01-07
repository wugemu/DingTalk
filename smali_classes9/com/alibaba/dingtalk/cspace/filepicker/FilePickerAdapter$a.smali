.class abstract Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$a;
.super Ljava/lang/Object;
.source "FilePickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;
    .param p2, "viewType"    # I

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$a;->b:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$a;->a:I

    .line 141
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Landroid/view/View;
.end method

.method public abstract a(Landroid/content/Context;ILgcy;Landroid/view/ViewGroup;)V
.end method
