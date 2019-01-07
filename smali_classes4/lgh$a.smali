.class public final Llgh$a;
.super Llgh$b;
.source "GifViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llgh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Llgh$b;-><init>()V

    .line 129
    iput v0, p0, Llgh$a;->a:I

    .line 130
    iput v0, p0, Llgh$a;->b:I

    .line 131
    return-void
.end method

.method constructor <init>(Landroid/widget/ImageView;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Llgh$b;-><init>(Landroid/view/View;Landroid/util/AttributeSet;II)V

    .line 123
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Llgh$a;->a(Landroid/widget/ImageView;Landroid/util/AttributeSet;Z)I

    move-result v0

    iput v0, p0, Llgh$a;->a:I

    .line 124
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Llgh$a;->a(Landroid/widget/ImageView;Landroid/util/AttributeSet;Z)I

    move-result v0

    iput v0, p0, Llgh$a;->b:I

    .line 125
    return-void
.end method

.method private static a(Landroid/widget/ImageView;Landroid/util/AttributeSet;Z)I
    .locals 5
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "isSrc"    # Z

    .prologue
    const/4 v3, 0x0

    .line 134
    const-string/jumbo v4, "http://schemas.android.com/apk/res/android"

    if-eqz p2, :cond_0

    const-string/jumbo v2, "src"

    :goto_0
    invoke-interface {p1, v4, v2, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 135
    .local v0, "resId":I
    if-lez v0, :cond_1

    .line 136
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "resourceTypeName":Ljava/lang/String;
    sget-object v2, Llgh;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, p2, v0}, Llgh;->a(Landroid/widget/ImageView;ZI)Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    .end local v0    # "resId":I
    .end local v1    # "resourceTypeName":Ljava/lang/String;
    :goto_1
    return v0

    .line 134
    :cond_0
    const-string/jumbo v2, "background"

    goto :goto_0

    .restart local v0    # "resId":I
    :cond_1
    move v0, v3

    .line 141
    goto :goto_1
.end method
