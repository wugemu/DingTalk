.class final Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog$2;
.super Ljava/lang/Object;
.source "CustomLanguagePickerDialog.java"

# interfaces
.implements Lctf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lctf",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(ILjava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 150
    check-cast p2, Ljava/lang/String;

    .line 1154
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;

    invoke-static {v1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->b(Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->c(Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    return-void
.end method
