.class public final Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;
.super Ljava/lang/Object;
.source "AlertMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/widget/AlertMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper$MenuType;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field public c:Z

.field public d:Landroid/content/DialogInterface$OnClickListener;

.field e:Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper$MenuType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "iconFont"    # Ljava/lang/String;
    .param p2, "menuName"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;->a:Ljava/lang/String;

    .line 168
    iput-object p2, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;->b:Ljava/lang/String;

    .line 169
    sget-object v0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper$MenuType;->MENU_TYPE_DEFAULT:Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper$MenuType;

    iput-object v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;->e:Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper$MenuType;

    .line 170
    return-void
.end method
