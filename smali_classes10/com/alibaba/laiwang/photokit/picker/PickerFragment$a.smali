.class final Lcom/alibaba/laiwang/photokit/picker/PickerFragment$a;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$a;->a:Ljava/lang/String;

    .line 731
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$a;->b:Landroid/content/Context;

    .line 732
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;B)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroid/content/Context;

    .prologue
    .line 724
    invoke-direct {p0, p1, p2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 736
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 737
    return-void
.end method
