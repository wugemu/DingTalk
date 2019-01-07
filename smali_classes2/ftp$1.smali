.class final Lftp$1;
.super Ljava/lang/Object;
.source "NameCardInfosInputViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lftp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lftp;


# direct methods
.method constructor <init>(Lftp;)V
    .locals 0
    .param p1, "this$0"    # Lftp;

    .prologue
    .line 37
    iput-object p1, p0, Lftp$1;->a:Lftp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 40
    iget-object v0, p0, Lftp$1;->a:Lftp;

    iget-object v0, v0, Lftp;->b:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->b()V

    .line 41
    return-void
.end method
