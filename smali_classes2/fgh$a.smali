.class final Lfgh$a;
.super Ljava/lang/Object;
.source "ConcernListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfgh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/View;

.field final synthetic d:Lfgh;


# direct methods
.method private constructor <init>(Lfgh;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lfgh$a;->d:Lfgh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfgh;B)V
    .locals 0
    .param p1, "x0"    # Lfgh;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lfgh$a;-><init>(Lfgh;)V

    return-void
.end method
