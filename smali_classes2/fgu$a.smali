.class final Lfgu$a;
.super Ljava/lang/Object;
.source "SelectorDepartmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfgu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/CheckBox;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/LinearLayout;

.field d:Landroid/view/View;

.field final synthetic e:Lfgu;


# direct methods
.method private constructor <init>(Lfgu;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lfgu$a;->e:Lfgu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfgu;B)V
    .locals 0
    .param p1, "x0"    # Lfgu;

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lfgu$a;-><init>(Lfgu;)V

    return-void
.end method
