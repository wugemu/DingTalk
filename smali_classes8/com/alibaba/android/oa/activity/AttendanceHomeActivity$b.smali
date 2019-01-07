.class final Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;
.super Ljava/lang/Object;
.source "AttendanceHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field final synthetic b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

.field private c:Landroid/view/View;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Landroid/view/View;)V
    .locals 1
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 1324
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1325
    sget v0, Ledz$f;->calendar_date_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->a:Landroid/widget/TextView;

    .line 1326
    sget v0, Ledz$f;->calendar_date_leave_tip:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->c:Landroid/view/View;

    .line 1327
    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->y(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ledz$e;->calendar_today_date_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->y(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1349
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .param p1, "isToday"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1334
    iput-boolean p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->d:Z

    .line 1335
    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->e:Z

    if-nez v0, :cond_0

    .line 1336
    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->d:Z

    if-eqz v0, :cond_1

    .line 1337
    invoke-direct {p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->a()V

    .line 1342
    :cond_0
    :goto_0
    return-void

    .line 1339
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 3
    .param p1, "isCurrent"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1352
    iput-boolean p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->e:Z

    .line 1353
    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->e:Z

    if-eqz v0, :cond_1

    .line 2365
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->z(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2366
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ledz$e;->calendar_current_date_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->b(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 2368
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->b:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->z(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1362
    :goto_0
    return-void

    .line 1356
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->d:Z

    if-eqz v0, :cond_2

    .line 1357
    invoke-direct {p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->a()V

    goto :goto_0

    .line 1359
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 2
    .param p1, "hasLeave"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1372
    if-eqz p1, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1377
    :goto_0
    return-void

    .line 1375
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
