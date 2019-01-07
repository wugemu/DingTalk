.class public final Lfiu;
.super Landroid/widget/BaseExpandableListAdapter;
.source "CommonContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfiu$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/homepage/Composite;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Landroid/app/Activity;

.field private d:Lfip;

.field private e:Lfiu$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lfip;I)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "fragmentSwitch"    # Lfip;
    .param p3, "chooseType"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 72
    iput-object p1, p0, Lfiu;->c:Landroid/app/Activity;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfiu;->a:Ljava/util/List;

    .line 74
    iput-object p2, p0, Lfiu;->d:Lfip;

    .line 75
    iput p3, p0, Lfiu;->b:I

    .line 76
    return-void
.end method

.method static synthetic a(Lfiu;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfiu;

    .prologue
    .line 62
    iget-object v0, p0, Lfiu;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private a(ILandroid/view/View;Lcom/alibaba/android/user/contact/homepage/Component;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "childPosition"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "item"    # Lcom/alibaba/android/user/contact/homepage/Component;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 256
    sget v3, Lezg$j;->layout_component:I

    invoke-direct {p0, v3, p1, p2, p4}, Lfiu;->a(IILandroid/view/View;Landroid/view/ViewGroup;)Lcre;

    move-result-object v1

    .line 257
    .local v1, "holder":Lcre;
    sget v3, Lezg$h;->cell_sub_node:I

    invoke-virtual {v1, v3}, Lcre;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;

    .line 259
    .local v0, "cell":Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;
    new-instance v2, Lcjz;

    iget-object v3, p0, Lfiu;->c:Landroid/app/Activity;

    sget v4, Lezg$l;->icon_branch:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lfiu;->c:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$e;->ui_common_level1_line_bg_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcjz;-><init>(Ljava/lang/String;I)V

    .line 260
    .local v2, "leftDrawable":Lcjz;
    iget-object v3, p0, Lfiu;->c:Landroid/app/Activity;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 6045
    iput v3, v2, Lcjz;->b:F

    .line 261
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 263
    invoke-virtual {p3}, Lcom/alibaba/android/user/contact/homepage/Component;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setTitle(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0, v6, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->b(II)V

    .line 266
    instance-of v3, p3, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;

    if-eqz v3, :cond_1

    .line 267
    check-cast p3, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;

    .line 6308
    .end local p3    # "item":Lcom/alibaba/android/user/contact/homepage/Component;
    new-instance v3, Lfiu$3;

    invoke-direct {v3, p0, p3}, Lfiu$3;-><init>(Lfiu;Lcom/alibaba/android/user/contact/homepage/DepartmentItem;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8055
    :cond_0
    :goto_0
    iget-object v3, v1, Lcre;->a:Landroid/view/View;

    .line 278
    return-object v3

    .line 268
    .restart local p3    # "item":Lcom/alibaba/android/user/contact/homepage/Component;
    :cond_1
    instance-of v3, p3, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;

    if-eqz v3, :cond_2

    .line 269
    check-cast p3, Lcom/alibaba/android/user/contact/homepage/MicroAppItem;

    .line 6324
    .end local p3    # "item":Lcom/alibaba/android/user/contact/homepage/Component;
    new-instance v3, Lfiu$4;

    invoke-direct {v3, p0, p3}, Lfiu$4;-><init>(Lfiu;Lcom/alibaba/android/user/contact/homepage/MicroAppItem;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 270
    .restart local p3    # "item":Lcom/alibaba/android/user/contact/homepage/Component;
    :cond_2
    instance-of v3, p3, Lcom/alibaba/android/user/contact/homepage/DeviceItem;

    if-eqz v3, :cond_3

    .line 271
    check-cast p3, Lcom/alibaba/android/user/contact/homepage/DeviceItem;

    .end local p3    # "item":Lcom/alibaba/android/user/contact/homepage/Component;
    iget-wide v4, p3, Lcom/alibaba/android/user/contact/homepage/DeviceItem;->mOrgId:J

    iget-object v3, p0, Lfiu;->c:Landroid/app/Activity;

    sget v6, Lezg$l;->dt_user_profile_smart_device_header_title:I

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v4, v5, v3}, Lfiu;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;JLjava/lang/String;)V

    goto :goto_0

    .line 272
    .restart local p3    # "item":Lcom/alibaba/android/user/contact/homepage/Component;
    :cond_3
    instance-of v3, p3, Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;

    if-eqz v3, :cond_4

    move-object v3, p3

    .line 273
    check-cast v3, Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/homepage/AlphaDeviceItem;->getOrgId()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/alibaba/android/user/contact/homepage/Component;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v4, v5, v3}, Lfiu;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;JLjava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_4
    instance-of v3, p3, Lcom/alibaba/android/user/contact/homepage/ShowByLabelItem;

    if-eqz v3, :cond_0

    move-object v3, p3

    .line 275
    check-cast v3, Lcom/alibaba/android/user/contact/homepage/ShowByLabelItem;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/homepage/ShowByLabelItem;->getOrgId()J

    move-result-wide v4

    check-cast p3, Lcom/alibaba/android/user/contact/homepage/ShowByLabelItem;

    .end local p3    # "item":Lcom/alibaba/android/user/contact/homepage/Component;
    invoke-virtual {p3}, Lcom/alibaba/android/user/contact/homepage/ShowByLabelItem;->getOrgName()Ljava/lang/String;

    move-result-object v3

    .line 7295
    if-eqz v0, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 7298
    new-instance v6, Lfiu$2;

    invoke-direct {v6, p0, v3, v4, v5}, Lfiu$2;-><init>(Lfiu;Ljava/lang/String;J)V

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private a(II)Lcom/alibaba/android/user/contact/homepage/Component;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lfiu;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/homepage/Composite;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/user/contact/homepage/Composite;->getChild(I)Lcom/alibaba/android/user/contact/homepage/Component;

    move-result-object v0

    return-object v0
.end method

.method private a(I)Lcom/alibaba/android/user/contact/homepage/Composite;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lfiu;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/homepage/Composite;

    return-object v0
.end method

.method private a(IILandroid/view/View;Landroid/view/ViewGroup;)Lcre;
    .locals 1
    .param p1, "res"    # I
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 349
    iget-object v0, p0, Lfiu;->c:Landroid/app/Activity;

    invoke-static {v0, p3, p4, p1, p2}, Lcre;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcre;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;JLjava/lang/String;)V
    .locals 2
    .param p1, "cell"    # Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;
    .param p2, "orgId"    # J
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 282
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    sget v0, Lezg$g;->icon_smart_device:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->b(II)V

    .line 286
    new-instance v0, Lfiu$1;

    invoke-direct {v0, p0, p4, p2, p3}, Lfiu$1;-><init>(Lfiu;Ljava/lang/String;J)V

    invoke-virtual {p1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lfiu;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p0, "x0"    # Lfiu;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J

    .prologue
    .line 62
    .line 8337
    iget-object v0, p0, Lfiu;->d:Lfip;

    if-eqz v0, :cond_0

    .line 8338
    iget-object v1, p0, Lfiu;->d:Lfip;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v1 .. v6}, Lfip;->a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 62
    :cond_0
    return-void
.end method

.method static synthetic a(Lfiu;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 7
    .param p0, "x0"    # Lfiu;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J
    .param p5, "x4"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    .line 62
    .line 8343
    iget-object v0, p0, Lfiu;->d:Lfip;

    if-eqz v0, :cond_0

    .line 8344
    iget-object v1, p0, Lfiu;->d:Lfip;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lfip;->a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lfiu;->a(II)Lcom/alibaba/android/user/contact/homepage/Component;

    move-result-object v0

    return-object v0
.end method

.method public final getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 132
    int-to-long v0, p2

    return-wide v0
.end method

.method public final getChildType(II)I
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lfiu;->a(II)Lcom/alibaba/android/user/contact/homepage/Component;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getType()I

    move-result v0

    return v0
.end method

.method public final getChildTypeCount()I
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->values()[Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lfiu;->a(II)Lcom/alibaba/android/user/contact/homepage/Component;

    move-result-object v0

    .line 217
    .local v0, "item":Lcom/alibaba/android/user/contact/homepage/Component;
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getType()I

    move-result v1

    .line 219
    .local v1, "type":I
    sget-object v2, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->Department:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 220
    invoke-direct {p0, p2, p4, v0, p5}, Lfiu;->a(ILandroid/view/View;Lcom/alibaba/android/user/contact/homepage/Component;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 5241
    .end local p4    # "convertView":Landroid/view/View;
    :cond_0
    :goto_0
    return-object p4

    .line 221
    .restart local p4    # "convertView":Landroid/view/View;
    :cond_1
    sget-object v2, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->MicroApp:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 222
    invoke-direct {p0, p2, p4, v0, p5}, Lfiu;->a(ILandroid/view/View;Lcom/alibaba/android/user/contact/homepage/Component;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    goto :goto_0

    .line 223
    :cond_2
    sget-object v2, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->Contact:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v2

    if-ne v2, v1, :cond_7

    .line 5237
    iget-object v2, p0, Lfiu;->e:Lfiu$a;

    if-nez v2, :cond_6

    .line 5238
    invoke-direct {p0, p1}, Lfiu;->a(I)Lcom/alibaba/android/user/contact/homepage/Composite;

    move-result-object v2

    .line 5239
    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/homepage/Composite;->getChildren()Ljava/util/List;

    move-result-object v2

    .line 5240
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5241
    :cond_3
    const/4 p4, 0x0

    goto :goto_0

    .line 5243
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5244
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/contact/homepage/Component;

    .line 5245
    check-cast v2, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5248
    :cond_5
    new-instance v2, Lfiu$a;

    iget-object v4, p0, Lfiu;->c:Landroid/app/Activity;

    iget v5, p0, Lfiu;->b:I

    invoke-direct {v2, p0, v4, v5}, Lfiu$a;-><init>(Lfiu;Landroid/app/Activity;I)V

    iput-object v2, p0, Lfiu;->e:Lfiu$a;

    .line 5249
    iget-object v2, p0, Lfiu;->e:Lfiu$a;

    invoke-virtual {v2, v3}, Lfiu$a;->a(Ljava/util/List;)V

    .line 5252
    :cond_6
    iget-object v2, p0, Lfiu;->e:Lfiu$a;

    invoke-virtual {v2, p2, p4, p5}, Lfiu$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    goto :goto_0

    .line 225
    :cond_7
    sget-object v2, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->AlphaDevice:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v2

    if-ne v2, v1, :cond_8

    .line 226
    invoke-direct {p0, p2, p4, v0, p5}, Lfiu;->a(ILandroid/view/View;Lcom/alibaba/android/user/contact/homepage/Component;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    goto :goto_0

    .line 227
    :cond_8
    sget-object v2, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->ShowByLabel:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v2

    if-ne v2, v1, :cond_9

    .line 228
    invoke-direct {p0, p2, p4, v0, p5}, Lfiu;->a(ILandroid/view/View;Lcom/alibaba/android/user/contact/homepage/Component;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    goto/16 :goto_0

    .line 229
    :cond_9
    sget-object v2, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->OrgMember:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 230
    invoke-direct {p0, p2, p4, v0, p5}, Lfiu;->a(ILandroid/view/View;Lcom/alibaba/android/user/contact/homepage/Component;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    goto/16 :goto_0
.end method

.method public final getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lfiu;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/homepage/Composite;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Composite;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lfiu;->a(I)Lcom/alibaba/android/user/contact/homepage/Composite;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lfiu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 127
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getGroupType(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lfiu;->a(I)Lcom/alibaba/android/user/contact/homepage/Composite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Composite;->getType()I

    move-result v0

    return v0
.end method

.method public final getGroupTypeCount()I
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;->values()[Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 167
    invoke-direct {p0, p1}, Lfiu;->a(I)Lcom/alibaba/android/user/contact/homepage/Composite;

    move-result-object v8

    .line 168
    .local v8, "groupItem":Lcom/alibaba/android/user/contact/homepage/Composite;
    invoke-virtual {v8}, Lcom/alibaba/android/user/contact/homepage/Composite;->getType()I

    move-result v10

    .line 170
    .local v10, "type":I
    sget v0, Lezg$j;->layout_org_component_select:I

    invoke-direct {p0, v0, p1, p3, p4}, Lfiu;->a(IILandroid/view/View;Landroid/view/ViewGroup;)Lcre;

    move-result-object v9

    .line 171
    .local v9, "holder":Lcre;
    sget v0, Lezg$h;->view_org_auth:I

    invoke-virtual {v9, v0, v5}, Lcre;->a(IZ)Lcre;

    .line 173
    sget v0, Lezg$h;->cell_title:I

    invoke-virtual {v8}, Lcom/alibaba/android/user/contact/homepage/Composite;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcre;->a(ILjava/lang/String;)Lcre;

    .line 174
    sget v0, Lezg$h;->cell_title:I

    invoke-virtual {v9, v0, v5, v5}, Lcre;->a(III)Lcre;

    .line 176
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;->Organization:Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;->getValue()I

    move-result v0

    if-ne v0, v10, :cond_6

    .line 177
    sget v0, Lezg$h;->cell_left_avatar:I

    invoke-virtual {v9, v0, v4}, Lcre;->a(IZ)Lcre;

    .line 178
    sget v0, Lezg$h;->cell_left_if_icon:I

    invoke-virtual {v9, v0, v5}, Lcre;->a(IZ)Lcre;

    .line 179
    check-cast v8, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    .end local v8    # "groupItem":Lcom/alibaba/android/user/contact/homepage/Composite;
    move-object v3, p4

    check-cast v3, Landroid/widget/AbsListView;

    .line 1201
    sget v0, Lezg$h;->cell_left_avatar:I

    sget v6, Lezg$g;->icon_contact_default:I

    invoke-virtual {v8}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getOrgLogo()Ljava/lang/String;

    move-result-object v2

    .line 2185
    invoke-virtual {v9, v0}, Lcre;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2187
    if-nez v1, :cond_2

    .line 1204
    :goto_0
    invoke-virtual {v8}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->isOpenEncrypt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1205
    sget v0, Lezg$h;->cell_title:I

    sget v1, Lezg$g;->chat_conv_icon_encrypt:I

    invoke-virtual {v9, v0, v5, v1}, Lcre;->a(III)Lcre;

    .line 1209
    :cond_0
    sget v0, Lezg$h;->view_org_auth:I

    invoke-virtual {v9, v0}, Lcre;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;

    invoke-virtual {v8}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getAuthLevel()I

    move-result v1

    invoke-virtual {v0, v1, v5, v5}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->a(IZZ)V

    .line 4055
    iget-object v0, v9, Lcre;->a:Landroid/view/View;

    .line 191
    :cond_1
    :goto_1
    if-eqz p2, :cond_7

    .line 192
    sget v0, Lezg$h;->cell_right_image:I

    sget v1, Lezg$g;->icon_tree_expand:I

    invoke-virtual {v9, v0, v1}, Lcre;->a(II)Lcre;

    .line 5055
    :goto_2
    iget-object v0, v9, Lcre;->a:Landroid/view/View;

    .line 196
    return-object v0

    .line 2191
    :cond_2
    if-gtz v6, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2192
    :cond_3
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2197
    :goto_3
    if-lez v6, :cond_4

    .line 2198
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3172
    :cond_4
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 3173
    const/4 v7, 0x0

    move v6, v5

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    goto :goto_0

    .line 2194
    :cond_5
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 180
    .restart local v8    # "groupItem":Lcom/alibaba/android/user/contact/homepage/Composite;
    :cond_6
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;->Common:Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;->getValue()I

    move-result v0

    if-ne v0, v10, :cond_1

    .line 181
    sget v0, Lezg$h;->cell_left_avatar:I

    invoke-virtual {v9, v0, v5}, Lcre;->a(IZ)Lcre;

    .line 182
    sget v0, Lezg$h;->cell_left_if_icon:I

    invoke-virtual {v9, v0, v4}, Lcre;->a(IZ)Lcre;

    .line 184
    sget v0, Lezg$h;->cell_left_if_icon:I

    invoke-virtual {v9, v0}, Lcre;->a(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_1

    .line 185
    sget v0, Lezg$h;->cell_left_if_icon:I

    invoke-virtual {v9, v0}, Lcre;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lezg$l;->icon_phoneperson_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 186
    sget v0, Lezg$h;->cell_left_if_icon:I

    invoke-virtual {v9, v0}, Lcre;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v1, p0, Lfiu;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_warming_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto :goto_1

    .line 194
    .end local v8    # "groupItem":Lcom/alibaba/android/user/contact/homepage/Composite;
    :cond_7
    sget v0, Lezg$h;->cell_right_image:I

    sget v1, Lezg$g;->icon_tree_collapse:I

    invoke-virtual {v9, v0, v1}, Lcre;->a(II)Lcre;

    goto :goto_2
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method
