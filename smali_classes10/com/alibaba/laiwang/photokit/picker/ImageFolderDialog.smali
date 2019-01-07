.class public Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;
.super Landroid/app/Dialog;
.source "ImageFolderDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field a:I

.field b:Lhbo;

.field c:Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog$a;

.field private e:Landroid/content/Context;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhbz;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->a:I

    .line 44
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->e:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lhbz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "folders":Ljava/util/List;, "Ljava/util/List<Lhbz;>;"
    sget v0, Liff$g;->Theme_ImageFolderDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->a:I

    .line 59
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->e:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->f:Ljava/util/List;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;)Lhbo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->b:Lhbo;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;)Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->c:Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog$a;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 73
    sget v1, Liff$e;->dialog_image_folder:I

    invoke-virtual {p0, v1}, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->setContentView(I)V

    .line 75
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 76
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhcn;->b(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhcn;->c(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-static {v2, v3}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 80
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 82
    sget v1, Liff$d;->lv_folder_list:I

    invoke-virtual {p0, v1}, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->g:Landroid/widget/ListView;

    .line 83
    new-instance v1, Lhbo;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->f:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lhbo;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->b:Lhbo;

    .line 84
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->b:Lhbo;

    iget v2, p0, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->a:I

    .line 1042
    iput v2, v1, Lhbo;->a:I

    .line 85
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->g:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->b:Lhbo;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->g:Landroid/widget/ListView;

    new-instance v2, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog$1;

    invoke-direct {v2, p0}, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog$1;-><init>(Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    return-void
.end method
