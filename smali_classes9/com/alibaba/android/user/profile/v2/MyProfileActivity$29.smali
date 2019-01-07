.class final Lcom/alibaba/android/user/profile/v2/MyProfileActivity$29;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/MyProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$29;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1
    .param p1, "datePicker"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$29;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v0, p2, p3, p4}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;III)V

    .line 1350
    return-void
.end method
